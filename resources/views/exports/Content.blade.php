<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>TitleAr</th>
        <th>TitleEn</th>
    </tr>
    </thead>
    <tbody>
    @foreach($contents as $content)
        <tr>
            <td>{{ $content->id }}</td>
            <td>{{ $content->title }}</td>
            <td>{{ $content->getTranslation('title','ar') }}</td>
        </tr>
    @endforeach
    </tbody>
</table>
