<table>
    <thead>
    <tr>
        <th>TitleAr</th>
        <th>TitleEn</th>
    </tr>
    </thead>
    <tbody>
    @foreach($contents as $content)
        <tr>
            <td>{{ $content->title }}</td>
            <td>{{ $content->getTranslation('title','ar') }}</td>
        </tr>
    @endforeach
    </tbody>
</table>